
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rqt-image-overlay-layer, vision-msgs }:
buildRosPackage {
  pname = "ros-rolling-vision-msgs-layers";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs_layers-release/archive/release/rolling/vision_msgs_layers/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "de274a99d66517151fff1f60bd26b7f89364ac93a6b9c3b921deca1b80905aa5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rqt-image-overlay-layer vision-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Collection of RQt Image Overlay Plugins for Vision Msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
