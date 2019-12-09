
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, rosidl-cmake, std-msgs, std-srvs, rosidl-default-runtime, ament-cmake, marti-common-msgs, diagnostic-updater, gtest, rosidl-default-generators, rclcpp, nav-msgs, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-swri-roscpp";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_roscpp/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "98af4e16c4820cfd9ecab407a569db40fba933eedd10303a8b4f2ee24f474f0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost rosidl-cmake std-msgs std-srvs marti-common-msgs diagnostic-updater rclcpp nav-msgs ];
  checkInputs = [ gtest ament-cmake-gtest ];
  propagatedBuildInputs = [ boost rosidl-default-runtime std-msgs std-srvs marti-common-msgs diagnostic-updater rclcpp nav-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''swri_roscpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
