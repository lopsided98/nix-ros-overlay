
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, data-tamer-msgs, mcap-vendor, rclcpp }:
buildRosPackage {
  pname = "ros-humble-data-tamer-cpp";
  version = "0.9.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/humble/data_tamer_cpp/0.9.3-2.tar.gz";
    name = "0.9.3-2.tar.gz";
    sha256 = "94f2ae440349002432e59ee783fc2126b77fa805bb327706acb94aa83c3294f2";
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
