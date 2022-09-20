
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, effort-controllers, gazebo-msgs, geometry-msgs, joint-state-controller, joint-trajectory-controller, position-controllers, roscpp, sensor-msgs, std-msgs, velocity-controllers }:
buildRosPackage {
  pname = "ros-melodic-omnibase-gazebo";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ERC-BPGC/omnibase-release/archive/release/melodic/omnibase_gazebo/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "6acc71a06fd1ab2fb25b723825be7a258682f8b9dc3cfe9eccdff57f4ddd65c2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ effort-controllers gazebo-msgs geometry-msgs joint-state-controller joint-trajectory-controller position-controllers roscpp sensor-msgs std-msgs velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The omnibase_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
