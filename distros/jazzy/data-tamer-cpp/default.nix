
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, data-tamer-msgs, mcap-vendor, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-data-tamer-cpp";
  version = "0.9.4-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/jazzy/data_tamer_cpp/0.9.4-4.tar.gz";
    name = "0.9.4-4.tar.gz";
    sha256 = "fef05ce0347e86aac40e56392bf190df26150a53de32cb3f38fd25120f284909";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ data-tamer-msgs mcap-vendor rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "DataTamer data logging library";
    license = with lib.licenses; [ mit ];
  };
}
