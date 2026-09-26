
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, builtin-interfaces, cppzmq, fss-time-interfaces, launch, launch-ros, python3Packages, rclcpp, rclpy, rosgraph-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-fss-time";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastswarmsim-release/archive/release/humble/fss_time/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "17c7ae7f53d057ea4c0bddb14aef4a4f2a82ab5799a2f829dba561c0db647e7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ builtin-interfaces cppzmq fss-time-interfaces launch launch-ros python3Packages.pyqt5 rclcpp rclpy rosgraph-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ZeroMQ based conservative lock-step simulation time for FastSwarmSim.";
    license = with lib.licenses; [ bsd3 ];
  };
}
