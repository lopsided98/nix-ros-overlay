
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-fanuc-resources";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/kinetic/fanuc_resources/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "938101a15261636944fd5f35b7784d873f2405d8764980f0fa643b6255783b36";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      Shared configuration data, 3D models and launch files for Fanuc
      manipulators.
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      that are shared between different Fanuc robot support packages
      within the ROS-Industrial program.

      This package also contains common urdf / xacro resources used by
      other Fanuc related packages.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
