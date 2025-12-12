
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rqt-gui-py }:
buildRosPackage {
  pname = "ros-jazzy-slider-publisher";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slider_publisher-release/archive/release/jazzy/slider_publisher/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "8293aa39b185ccc483b8f7dff2c6b6591055d55cdee18afc6778b3fc07c3cd56";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rqt-gui-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message or call services.";
    license = with lib.licenses; [ mit ];
  };
}
