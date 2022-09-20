
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, warthog-gazebo }:
buildRosPackage {
  pname = "ros-melodic-warthog-simulator";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_simulator-release/archive/release/melodic/warthog_simulator/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "be0d98e29d052f06df7da430fa0363812a499e4ac58cd1d47ba30f960c487f26";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ warthog-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
