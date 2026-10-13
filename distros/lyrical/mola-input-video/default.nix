
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-hwdrivers, mrpt-obs }:
buildRosPackage {
  pname = "ros-lyrical-mola-input-video";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_input_video/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "7a988fefac153c51ad5d222426d323870a80f5dc90d9f28d315023d4d68c3973";
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
