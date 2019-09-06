
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin }:
buildRosPackage {
  pname = "ros-kinetic-swri-string-util";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_string_util/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "e97e1924047cc4e8e18c5f0f7693acb896b8b1e0951a7169333218bcb599ab63";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_string_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
