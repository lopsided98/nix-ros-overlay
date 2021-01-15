
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-description";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_description/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "af16d583c7798ed4b9e83e16fcc32898fd12bf8d1dca18b4c1bce7e276acd5f4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Description of the Kobuki model.
      Provides the model description of Kobuki for simulation and visualisation. The files in this 
      package are parsed and used by a variety of other components. Most users will not interact directly
      with this package.
      
      WARNING: This package is disabled because it cannot be catkinized by now, as xacro dependency is not
      catkin still. In the interim we use a unary pre-catkin stack named kobuki_description.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
