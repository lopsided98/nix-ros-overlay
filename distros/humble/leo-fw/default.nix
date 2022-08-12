
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-python, geometry-msgs, leo-msgs, nav-msgs, python3Packages, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-leo-fw";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-ros2-release/archive/release/humble/leo_fw/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "9df27c3471c2870b9011429055fda2f3d8df25a145da956062e5c5284fbbc346";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-index-python geometry-msgs leo-msgs nav-msgs python3Packages.dbus-python python3Packages.pyyaml python3Packages.whichcraft rclcpp rclcpp-components rclpy sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Binary releases of Leo Rover firmware and related utilities'';
    license = with lib.licenses; [ mit ];
  };
}
