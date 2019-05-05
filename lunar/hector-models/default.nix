
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-sensors-description, catkin, hector-xacro-tools }:
buildRosPackage {
  pname = "ros-lunar-hector-models";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/lunar/hector_models/0.5.0-0.tar.gz;
    sha256 = "21224489483cdfa1be5ad6afc495c44c355ee7fad6677c9edd7cda14dee809d0";
  };

  propagatedBuildInputs = [ hector-sensors-description hector-xacro-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_models contains (urdf) models of robots, sensors etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
