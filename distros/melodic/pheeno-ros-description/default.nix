
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-pheeno-ros-description";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/acslaboratory/pheeno_ros_description-release/archive/release/melodic/pheeno_ros_description/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "4849cdf4250dfdbd134a913bd739e1b2647446a89eb50a6dde59bdbc9632019c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pheeno_ros_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
