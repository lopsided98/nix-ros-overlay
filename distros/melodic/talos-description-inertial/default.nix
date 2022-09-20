
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-talos-description-inertial";
  version = "1.0.45";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/melodic/talos_description_inertial/1.0.45-0.tar.gz";
    name = "1.0.45-0.tar.gz";
    sha256 = "03af558efe948f9f6e0babd3a08d1f83819ad86011e25edca8402a9e2bcd8a3a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Inertial parameters of talos'';
    license = with lib.licenses; [ "CC-BY-NC-ND-3.0" ];
  };
}
