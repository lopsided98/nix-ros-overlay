
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jackal-gazebo }:
buildRosPackage {
  pname = "ros-melodic-jackal-simulator";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_simulator-release/archive/release/melodic/jackal_simulator/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "e9e14150e70e7c51cd6fa674af8c0bae82aedd156e8bf0019774448d6b1a915a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jackal-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Jackal.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
