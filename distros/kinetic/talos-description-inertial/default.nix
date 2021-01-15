
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-talos-description-inertial";
  version = "1.0.45-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/kinetic/talos_description_inertial/1.0.45-1.tar.gz";
    name = "1.0.45-1.tar.gz";
    sha256 = "aec9894b5c578ceef4171978a96d04dc9df088981f4a6f44ba921f35e7b73c7c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Inertial parameters of talos'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
