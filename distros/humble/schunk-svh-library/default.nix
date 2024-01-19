
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake }:
buildRosPackage {
  pname = "ros-humble-schunk-svh-library";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/schunk_svh_library-release/archive/release/humble/schunk_svh_library/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "b37adceed6650a8f0fd383f097bfe58d7743df5b2a81768a29af63e21da1470e";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing the Schunk five finger hand.'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
