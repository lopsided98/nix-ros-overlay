
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rqt-image-overlay-layer, vision-msgs }:
buildRosPackage {
  pname = "ros-rolling-vision-msgs-layers";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs_layers-release/archive/release/rolling/vision_msgs_layers/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "6fb269cdaf8cb5b73e1dbb5cf92d504c918364ae55356d43b92b8e2da398272e";
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
