
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, ecto, pcl-conversions, proj, pythonPackages, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ecto-pcl";
  version = "0.4.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ecto_pcl-release/archive/release/kinetic/ecto_pcl/0.4.5-0.tar.gz";
    name = "0.4.5-0.tar.gz";
    sha256 = "2691d2245038c7a7c396b770a090096c80c2734b33318f2ec80b4d823a1b6553";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.nose rosunit ];
  propagatedBuildInputs = [ boost ecto pcl-conversions proj sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ecto bindings for common PCL functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
