
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin }:
buildRosPackage {
  pname = "ros-lunar-swri-string-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_string_util/2.8.0-0.tar.gz;
    sha256 = "cd8ba46e2b950c384359e0de6c8271a394a5386b4bc2cf7bd041b58fa20a42e1";
  };

  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_string_util'';
    #license = lib.licenses.BSD;
  };
}
