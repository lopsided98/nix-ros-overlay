
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, boost, catkin, rostime, calibration-msgs }:
buildRosPackage {
  pname = "ros-lunar-settlerlib";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/lunar/settlerlib/0.10.14-0.tar.gz;
    sha256 = "44966f752699c3b7264d5c66895a660ad938707c3be647e5a0608cb3459df50a";
  };

  buildInputs = [ boost rostime rosconsole calibration-msgs ];
  propagatedBuildInputs = [ boost rostime rosconsole calibration-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Defines helper functions and routines that greatly help when trying to create a settler
    for a specific sensor channel. This package is experimental and unstable.
    Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
