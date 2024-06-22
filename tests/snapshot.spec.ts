import {test, expect } from '@playwright/test'

test('The playwright homepage matches the snapshot', async ({page}) => {
    await page.goto('https://playwright.dev/');

    await expect(page).toHaveScreenshot('homepage.png', {maxDiffPixelRatio: 0.1});
})