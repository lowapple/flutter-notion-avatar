# Notion Avatar Widget

Flutter Widget plugin for generating and displaying Notion Avatars.

> This plugin is written simply for use with ToyProject. There is still a lot of work to be done, so if you have any additions or issues, please leave them on Github/issues. 

<table>
<tr>
<th> Usage </th>
<th> Preview </th>
</tr>
<tr>
<td>
Wrap the NotionAvatar widget inside a SizedBox(or Widget) to specify the size. Use the `useRandom` property to generate a random avatar.

```dart
SizedBox(
  width: 300,
  height: 300,
  child: NotionAvatar(
    useRandom: true,
    onCreated: (NotionAvatarController controller) {
      this.controller = controller;
    },
  ),
)
```
</td>
<td>
<img src="https://github.com/lowapple/flutter-notion-avatar/assets/26740046/795fca01-7976-49ad-9540-67699881cce7"/>
</td>
</tr>
</table>

## Controller Methods

The `NotionAvatarController` provides the following methods to control the avatar:

- `random()`: Generates a random avatar.
- `setAccessories(int index)`: Sets the accessories of the avatar.
- `setEyes(int index)`: Sets the eyes of the avatar.
- `setEyebrows(int index)`: Sets the eyebrows of the avatar.
- `setFace(int index)`: Sets the face of the avatar.
- `setGlasses(int index)`: Sets the glasses of the avatar.
- `setHair(int index)`: Sets the hair of the avatar.
- `setMouth(int index)`: Sets the mouth of the avatar.
- `setNose(int index)`: Sets the nose of the avatar.
- `setDetails(int index)`: Sets the details of the avatar.


## Styles


<details>
<summary>Accessories</summary>
  
  ![accessories](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/adf6642b-fb79-47b7-90e2-63cbf37527a5)
  
Accessories can be customized using the `NotionAvatarController`'s `setAccessories()` method.

</details>

<details>
<summary>Beard</summary>

  ![beard](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/30e4cafc-5591-448d-a496-f04248fc625a)

Beard styles can be customized using the `NotionAvatarController`'s `setDetails()` method.

</details>

<details>
<summary>Details</summary>

  ![details](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/57b3a0dc-d2fc-4bb3-b73f-23b1aa27a60b)

Details can be customized using the `NotionAvatarController`'s `setDetails()` method.

</details>

<details>
<summary>Eyebrows</summary>
 
  ![eyebrows](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/4161ebaa-7fe1-4313-8d83-756bdc7adc46)

Eyebrow styles can be customized using the `NotionAvatarController`'s `setEyebrows()` method.

</details>

<details>
<summary>Eyes</summary>

  ![eyes](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/cf7bcbf0-b9d0-49f5-bd03-562558f0f3fb)

Eye styles can be customized using the `NotionAvatarController`'s `setEyes()` method.

</details>

<details>
<summary>Face</summary>

  ![face](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/681c1708-0a07-48ab-b7a1-5325eb1a96fa)

Face styles can be customized using the `NotionAvatarController`'s `setFace()` method.

</details>

<details>
<summary>Glasses</summary>
  
  ![glasses](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/62f10184-bdae-4671-b2be-336e52561b85)

Glasses styles can be customized using the `NotionAvatarController`'s `setGlasses()` method.

</details>

<details>
<summary>Hair</summary>

  ![hair](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/2c2b0563-331b-47c4-86dd-d273e9fe8dfb)

Hair styles can be customized using the `NotionAvatarController`'s `setHair()` method.

</details>

<details>
<summary>Mouth</summary>
  
  ![mouth](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/d613c103-4897-4f9b-9a64-a1448f5c8b4c)

Mouth styles can be customized using the `NotionAvatarController`'s `setMouth()` method.

</details>

<details>
<summary>Nose</summary>

  ![nose](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/77eca0a2-f0f1-4106-9229-855e82636811)

Nose styles can be customized using the `NotionAvatarController`'s `setNose()` method.

</details>

## Assets

- Illustration designer: [@Felix Wong](https://www.producthunt.com/@felix12777) on ProductHunt
- Pack of illustrations: [Noto avatar](https://abstractlab.gumroad.com/l/noto-avatar)
- Assets licensed under [CC0](https://creativecommons.org/publicdomain/zero/1.0/) <img src="https://github.com/lowapple/flutter-notion-avatar/assets/26740046/8f78af5f-f3a2-498f-804f-1eff428b2eb3" width="50"/>
- Reference by [Mayandev/notion-avatar](https://github.com/Mayandev/notion-avatar)
