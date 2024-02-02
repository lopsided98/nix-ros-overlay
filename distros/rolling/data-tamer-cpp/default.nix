
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, data-tamer-msgs, mcap-vendor, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-data-tamer-cpp";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/rolling/data_tamer_cpp/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "f6c074692736cb504954f5bbdba57b889e483513acf3ec853f355d44f9b66cc5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ data-tamer-msgs mcap-vendor rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''DataTamer data logging library'';
    license = with lib.licenses; [ mit ];
  };
}
