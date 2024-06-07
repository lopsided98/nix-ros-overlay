
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-rolling-ur-client-library";
  version = "1.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/rolling/ur_client_library/1.3.7-1.tar.gz";
    name = "1.3.7-1.tar.gz";
    sha256 = "e099a799e39444d4346b001d9ef9c05519936382dbfa645050f94f8c40665bcc";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.";
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" ];
  };
}
