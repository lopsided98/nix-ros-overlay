
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-humble-picknik-twist-controller";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/humble/picknik_twist_controller/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "aa5861298283a04c10af410eff459b4f67c40cf15c20bc5af321e99f2ade8c5d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ controller-interface example-interfaces geometry-msgs rclcpp realtime-tools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Subscribes to twist msg and forwards to hardware'';
    license = with lib.licenses; [ asl20 ];
  };
}
