
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, qt5, rcl-interfaces, rclcpp, rosbag2-transport, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-swri-console";
  version = "2.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/swri_console-release/archive/release/humble/swri_console/2.0.5-2.tar.gz";
    name = "2.0.5-2.tar.gz";
    sha256 = "d43485c37457aa14e0cef5c8cdd7e7510a82dc514ce04dd8a6823e2ae4cd9143";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ boost qt5.qtbase rcl-interfaces rclcpp rosbag2-transport rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A rosout GUI viewer developed at Southwest Research Insititute as an
     alternative to rqt_console.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
