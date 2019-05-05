
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pkg-config, cppunit, eigen, cmake }:
buildRosPackage {
  pname = "ros-lunar-orocos-kdl";
  version = "1.3.1";

  src = fetchurl {
    url = https://github.com/smits/orocos-kdl-release/archive/release/lunar/orocos_kdl/1.3.1-0.tar.gz;
    sha256 = "f1c1fe4d24b484ec149313b54c9258832c55de058739d4ff29ab833201aa5132";
  };

  buildInputs = [ eigen ];
  checkInputs = [ cppunit ];
  propagatedBuildInputs = [ catkin pkg-config eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
