
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cpplint, curl, diagnostic-aggregator, diagnostic-updater, geometry-msgs, jq, lifecycle-msgs, mavros-msgs, microstrain-inertial-msgs, nav-msgs, nmea-msgs, rclcpp-lifecycle, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-microstrain-inertial-driver";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/foxy/microstrain_inertial_driver/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "234ac5b329b1a2d5a23f9a3679f8facac7fd239223783106ac9105810e88e31d";
  };

  buildType = "ament_cmake";
  buildInputs = [ curl jq ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-cpplint ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-updater geometry-msgs lifecycle-msgs mavros-msgs microstrain-inertial-msgs nav-msgs nmea-msgs rclcpp-lifecycle rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = ''The ros_mscl package provides a driver for the LORD/Microstrain inertial products.'';
    license = with lib.licenses; [ mit ];
  };
}
