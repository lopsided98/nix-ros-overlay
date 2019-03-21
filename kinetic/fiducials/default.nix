
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fiducial-msgs, catkin, fiducial-slam, aruco-detect }:
buildRosPackage {
  pname = "ros-kinetic-fiducials";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/kinetic/fiducials/0.10.0-0.tar.gz;
    sha256 = "1301fd55ccf7812277fd40be1f11b84e8adad6784306b60608e9839398eef40c";
  };

  propagatedBuildInputs = [ fiducial-msgs fiducial-slam aruco-detect ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Localization using fiducial markers'';
    #license = lib.licenses.BSD;
  };
}
