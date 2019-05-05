
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyamlcpp, catkin, boost, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-swri-yaml-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_yaml_util/2.8.0-0.tar.gz;
    sha256 = "db4f0e449531840ce1c70f259aaaf2afc0908a2d5a48dc6eb11a9095c3442d64";
  };

  buildInputs = [ libyamlcpp boost ];
  propagatedBuildInputs = [ libyamlcpp boost ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Provides wrappers around the yaml-cpp library for various utility functions
    and to abstract out the API changes made to yaml-cpp between ubuntu:precise
    and ubuntu:trusty.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
