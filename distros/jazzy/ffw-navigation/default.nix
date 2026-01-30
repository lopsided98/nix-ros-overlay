
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup, navigation2, rviz2, slam-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-ffw-navigation";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_navigation/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "68196584a80e9675f84237b0c61b0f8caedb0cec1986277da0253f0814e21909";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav2-bringup navigation2 rviz2 slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ffw_navigation";
    license = with lib.licenses; [ asl20 ];
  };
}
