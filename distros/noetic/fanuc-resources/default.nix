
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-fanuc-resources";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/noetic/fanuc_resources/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "bdb502efb9031262e58ad2c9248ae8423792ea9d5c495cde6158025e54e99305";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      Shared configuration data, 3D models and launch files for Fanuc
      manipulators.
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      that are shared between different Fanuc robot support packages
      within the ROS-Industrial program.

      This package also contains common urdf / xacro resources used by
      other Fanuc related packages.
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
