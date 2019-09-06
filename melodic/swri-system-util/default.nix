
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-swri-system-util";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_system_util/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "15bd65e8a1759e5e0464074f8f70482a535e14ea85108096763f61821c31cd7b";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_system_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
