
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-husky-description";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_description/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "d6bb1c74b737fe60527f241c6fe7a1e0db64f06c4610b6b46de0bbe8238b7353";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
