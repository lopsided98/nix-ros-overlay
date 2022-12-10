
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rqt-image-overlay-layer, vision-msgs }:
buildRosPackage {
  pname = "ros-rolling-vision-msgs-layers";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs_layers-release/archive/release/rolling/vision_msgs_layers/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "8b483e937d93f61877b6b8e62b9a23d828bd5ea0cfde19d689d43786dc3db8b4";
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
