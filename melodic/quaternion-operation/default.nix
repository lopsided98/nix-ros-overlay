
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, eigen, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-quaternion-operation";
  version = "0.0.1-r2";

  src = fetchurl {
    url = https://github.com/OUXT-Polaris/quaternion_operation-release/archive/release/melodic/quaternion_operation/0.0.1-2.tar.gz;
    sha256 = "f33f3b9910bd5212fd5bc408af7d8f858c97fb58bc27f88fc5ca17ceeaccd15b";
  };

  buildInputs = [ rostest roscpp geometry-msgs eigen ];
  propagatedBuildInputs = [ rostest roscpp geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The quaternion_operation package'';
    #license = lib.licenses.Aoache v2;
  };
}
