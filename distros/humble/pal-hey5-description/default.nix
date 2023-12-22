
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-hey5-description";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_hey5-release/archive/release/humble/pal_hey5_description/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "bc0cc8920d31ae17c8df994d715248c9646cd56d2f7c159a1273a065742d8e34";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
    etc.) of the Hey5 hand.  The files in this package are parsed and used by
    a variety of other components.  Most users will not interact directly
    with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
