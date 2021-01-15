
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, thormang3-manipulation-demo, thormang3-sensors, thormang3-walking-demo }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-ppc";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-PPC-release/archive/release/kinetic/thormang3_ppc/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "19f7f9391e4602eb41c428b345db9bd4fe3b3e631c96b484268b86eb645d1891";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ thormang3-manipulation-demo thormang3-sensors thormang3-walking-demo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the thormang3_ppc (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
