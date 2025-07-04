
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rqt-image-overlay-layer, vision-msgs }:
buildRosPackage {
  pname = "ros-kilted-vision-msgs-layers";
  version = "0.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs_layers-release/archive/release/kilted/vision_msgs_layers/0.2.0-4.tar.gz";
    name = "0.2.0-4.tar.gz";
    sha256 = "3e80f7d48ba2c50f4ef95306d2d968eea58f396a9e50e954b5080762ce2a3ff5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rqt-image-overlay-layer vision-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Collection of RQt Image Overlay Plugins for Vision Msgs";
    license = with lib.licenses; [ asl20 ];
  };
}
