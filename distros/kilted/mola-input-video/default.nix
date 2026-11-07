
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-hwdrivers, mrpt-obs }:
buildRosPackage {
  pname = "ros-kilted-mola-input-video";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_input_video/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "ab3bd83b13229009da93733e988d106d13550d58aef126af3c3e0f78d4307ae4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-hwdrivers mrpt-obs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "RawDataSource from live or offline video sources";
    license = with lib.licenses; [ gpl3Only ];
  };
}
