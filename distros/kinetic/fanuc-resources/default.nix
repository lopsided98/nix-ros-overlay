
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-fanuc-resources";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/kinetic/fanuc_resources/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "5ea4d178e127360e59d899684c37b34f3cd455395cbddf0dd998f112dd1585bd";
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
