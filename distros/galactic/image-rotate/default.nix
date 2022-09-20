
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, class-loader, cv-bridge, image-transport, rclcpp, rclcpp-components, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-image-rotate";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/galactic/image_rotate/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "1a71fe9e2a25a97ea66fc948bc39d83180fd4f35970c6eea3227dcdf1b862044";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto class-loader ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport rclcpp rclcpp-components tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''<p>
      Contains a node that rotates an image stream in a way that minimizes
      the angle between a vector in some arbitrary frame and a vector in the
      camera frame. The frame of the outgoing image is published by the node.
    </p>
    <p>
      This node is intended to allow camera images to be visualized in an
      orientation that is more intuitive than the hardware-constrained
      orientation of the physical camera. This is particularly helpful, for
      example, to show images from the PR2's forearm cameras with a
      consistent up direction, despite the fact that the forearms need to
      rotate in arbitrary ways during manipulation.
    </p>
    <p>
      It is not recommended to use the output from this node for further
      computation, as it interpolates the source image, introduces black
      borders, and does not output a camera_info.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
