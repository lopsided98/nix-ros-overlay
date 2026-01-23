
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-hebi-cpp-api";
  version = "3.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/rolling/hebi_cpp_api/3.16.0-1.tar.gz";
    name = "3.16.0-1.tar.gz";
    sha256 = "eda734e1bf9489626e1389ef1f16eb7806bb2fd5a3fb9767f3a95fadb70b6796";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
