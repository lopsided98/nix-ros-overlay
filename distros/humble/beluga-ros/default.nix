
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-python, beluga, geometry-msgs, nav-msgs, python3Packages, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-beluga-ros";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/humble/beluga_ros/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "17f45583558e9ff48b7a438d2d9d865f1af00ea9830f63b50481b4e6ba2e9856";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ beluga geometry-msgs nav-msgs python3Packages.h5py python3Packages.matplotlib python3Packages.numpy python3Packages.scipy sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Utilities to interface ROS with Beluga.";
    license = with lib.licenses; [ asl20 ];
  };
}
