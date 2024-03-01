
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, data-tamer-msgs, mcap-vendor, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-data-tamer-cpp";
  version = "0.9.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/rolling/data_tamer_cpp/0.9.4-2.tar.gz";
    name = "0.9.4-2.tar.gz";
    sha256 = "feec315d40e083f93e6c62a34389a3dbfda0a811e9caecb0679596ed8341d15b";
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
