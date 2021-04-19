
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, nav-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-homer-nav-libs";
  version = "0.1.53";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_nav_libs-release/-/archive/release/kinetic/homer_nav_libs/0.1.53-0/homer_nav_libs-release-release-kinetic-homer_nav_libs-0.1.53-0.tar.gz";
    name = "homer_nav_libs-release-release-kinetic-homer_nav_libs-0.1.53-0.tar.gz";
    sha256 = "afad76b9900cd46ebe3143e79af881632ca4069a3ddae67314fe6a352aebcb92";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nav_libs package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
