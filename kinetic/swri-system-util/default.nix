
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-swri-system-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_system_util/2.8.0-0.tar.gz;
    sha256 = "d0eed48a3f22aa9effbc3a4a155e469caa6d579ceefdfbd339ada60a9b68e450";
  };

  buildInputs = [ roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_system_util'';
    #license = lib.licenses.BSD;
  };
}
