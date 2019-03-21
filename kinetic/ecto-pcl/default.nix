
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, ecto, sensor-msgs, catkin, pythonPackages, proj, pcl-conversions, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-ecto-pcl";
  version = "0.4.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/ecto_pcl-release/archive/release/kinetic/ecto_pcl/0.4.5-0.tar.gz;
    sha256 = "2691d2245038c7a7c396b770a090096c80c2734b33318f2ec80b4d823a1b6553";
  };

  checkInputs = [ pythonPackages.nose rosunit ];
  propagatedBuildInputs = [ proj boost sensor-msgs pcl-conversions ecto ];
  nativeBuildInputs = [ proj boost sensor-msgs catkin pcl-conversions ecto ];

  meta = {
    description = ''Ecto bindings for common PCL functionality.'';
    #license = lib.licenses.BSD;
  };
}
