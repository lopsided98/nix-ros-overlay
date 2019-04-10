
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-marti-data-structures";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/marti_data_structures/2.8.0-0.tar.gz;
    sha256 = "c2eb77b610ee83a649fb80d5593096b4b9e9baab072e7b715d825ac7c2337b51";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_data_structures'';
    #license = lib.licenses.BSD;
  };
}
