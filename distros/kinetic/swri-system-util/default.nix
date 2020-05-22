
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-swri-system-util";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_system_util/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "cab76fa5f32d1df9b95c9f46c93802d9a5d7dad4a927cdee016fee13341215cc";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_system_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
