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
<img src="https://github.com/lowapple/flutter-notion-avatar/assets/26740046/3a5ba67c-42c8-492b-a579-d630b2edb3fa"/>
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
  
![accessories](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/04f773d1-972d-465f-9060-e545b6a10087)

Accessories can be customized using the `NotionAvatarController`'s `setAccessories()` method.

</details>

<details>
<summary>Beard</summary>

![beard](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/90f455bc-4814-48f3-b958-4440d2cc972c)

Beard styles can be customized using the `NotionAvatarController`'s `setDetails()` method.

</details>

<details>
<summary>Details</summary>
  
![details](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/56ca592f-f888-446b-bc50-c2b31fe7d846)


Details can be customized using the `NotionAvatarController`'s `setDetails()` method.

</details>

<details>
<summary>Eyebrows</summary>
  
![eyebrows](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/8793c54b-4465-4578-a289-829386c92e2b)


Eyebrow styles can be customized using the `NotionAvatarController`'s `setEyebrows()` method.

</details>

<details>
<summary>Eyes</summary>
  
![eyes](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/80ebcca7-dec8-427b-892c-237193a42e81)


Eye styles can be customized using the `NotionAvatarController`'s `setEyes()` method.

</details>

<details>
<summary>Face</summary>
  
![face](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/2c39a099-6d9b-496e-976a-5ac5224536fc)


Face styles can be customized using the `NotionAvatarController`'s `setFace()` method.

</details>

<details>
<summary>Glasses</summary>
  
![glasses](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/35c6dae1-f8db-4eee-88bb-eb70847bc68a)


Glasses styles can be customized using the `NotionAvatarController`'s `setGlasses()` method.

</details>

<details>
<summary>Hair</summary>
  
![hair](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/35ae45d4-8af6-4797-94ed-841f539641bd)

Hair styles can be customized using the `NotionAvatarController`'s `setHair()` method.

</details>

<details>
<summary>Mouth</summary>
  
![mouth](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/02a10702-c05f-441f-a63d-63fc099cf58a)

Mouth styles can be customized using the `NotionAvatarController`'s `setMouth()` method.

</details>

<details>
<summary>Nose</summary>
  
![nose](https://github.com/lowapple/flutter-notion-avatar/assets/26740046/d35e62d9-f03e-48c7-a52f-c82c20c77369)

Nose styles can be customized using the `NotionAvatarController`'s `setNose()` method.

</details>

## Assets

- Illustration designer: [@Felix Wong](https://www.producthunt.com/@felix12777) on ProductHunt
- Pack of illustrations: [Noto avatar](https://abstractlab.gumroad.com/l/noto-avatar)
- Assets licensed under [CC0](https://creativecommons.org/publicdomain/zero/1.0/) <img src="https://github.com/lowapple/flutter-notion-avatar/assets/26740046/8f78af5f-f3a2-498f-804f-1eff428b2eb3" width="50"/>
- Reference by [Mayandev/notion-avatar](https://github.com/Mayandev/notion-avatar)
