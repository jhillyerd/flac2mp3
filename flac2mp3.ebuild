# $Id: flac2mp3.ebuild 12 2006-04-19 06:11:37Z james $

DESCRIPTION="a tool to convert potentially large sets of FLAC audio files into the MP3 audio format"
HOMEPAGE="http://www.bytemonkey.org/projects/flac2mp3/"
SRC_URI="http://www.bytemonkey.org/files/${PN}/${P}.tgz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND="media-sound/lame
    sys-apps/findutils
    sys-apps/coreutils
    sys-apps/sed
    media-libs/flac
    app-shells/bash"
DEPEND=""

function src_install()
{
    dobin flac2mp3
    dodoc README.txt
}
