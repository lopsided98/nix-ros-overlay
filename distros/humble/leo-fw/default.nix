
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-python, geometry-msgs, leo-msgs, libyamlcpp, nav-msgs, python3Packages, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-leo-fw";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/humble/leo_fw/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "bef5f4ad9c048fa933c75b12b05001b74ac6c8a1ad2fa8421f1d8f810f005618";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python libyamlcpp ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs leo-msgs nav-msgs python3Packages.dbus-python python3Packages.pyyaml python3Packages.whichcraft rclcpp rclcpp-components rclpy sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Binary releases of Leo Rover firmware and related utilities'';
    license = with lib.licenses; [ mit ];
  };
}
