
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-ruckig";
  version = "0.9.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ruckig-release/archive/release/rolling/ruckig/0.9.2-2.tar.gz";
    name = "0.9.2-2.tar.gz";
    sha256 = "bdaebeceafbd116fd87fefd1527dcf25bb19e28d22d566ad72f9a856d11d0226";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
