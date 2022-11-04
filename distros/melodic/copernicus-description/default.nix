
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-melodic-copernicus-description";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/copernicus-release/archive/release/melodic/copernicus_description/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "45755a8f02a7d84af410f684521f622839193ad68ca03a009c29c8df44d36182";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch velodyne-description ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The copernicus_description package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
