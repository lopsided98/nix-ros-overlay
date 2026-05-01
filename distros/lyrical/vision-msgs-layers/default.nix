
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rqt-image-overlay-layer, vision-msgs }:
buildRosPackage {
  pname = "ros-lyrical-vision-msgs-layers";
  version = "0.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs_layers-release/archive/release/lyrical/vision_msgs_layers/0.2.0-5.tar.gz";
    name = "0.2.0-5.tar.gz";
    sha256 = "7e02beac755ab2420c9e7704ba33062e349fc8643d0cc0b19f04bd4b73c39b27";
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
