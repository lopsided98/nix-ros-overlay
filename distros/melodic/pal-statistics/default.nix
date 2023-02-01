
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gtest, pal-statistics-msgs, roscpp, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-pal-statistics";
  version = "1.4.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pal-gbp";
        repo = "pal_statistics-release";
        rev = "release/melodic/pal_statistics/1.4.1-1";
        sha256 = "sha256-U9zQQ1sbKAp/qCGddx3/y0JG0z2hHbHyMr0af0Wj1dM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ boost pal-statistics-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pal_statistics package'';
    license = with lib.licenses; [ mit ];
  };
}
