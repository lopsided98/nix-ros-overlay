
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, geometry-msgs, heron-msgs, nav-msgs, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-heron-controller";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron_controller-release/archive/release/melodic/heron_controller/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "fb128ac4dec46641368bc6fe28a399f18af9eb26da359d1e7c4edaf47e62bd61";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox geometry-msgs heron-msgs nav-msgs sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The heron_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
