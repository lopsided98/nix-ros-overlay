
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, builtin-interfaces, cppzmq, fss-time-interfaces, launch, launch-ros, pkg-config, python3Packages, rclcpp, rclpy, rosgraph-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-fss-time";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastswarmsim-release/archive/release/humble/fss_time/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "108c94f51236ba7f623cac3386ff7b553188a8459d04ae78415bfd4f179fdf3a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ builtin-interfaces cppzmq fss-time-interfaces launch launch-ros python3Packages.pyqt5 rclcpp rclpy rosgraph-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ZeroMQ based conservative lock-step simulation time for FastSwarmSim.";
    license = with lib.licenses; [ bsd3 ];
  };
}
